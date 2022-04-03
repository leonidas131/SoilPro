﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using ExDesign.Datas;

namespace ExDesign.Scripts
{
    public static class Analysis
    {
        public static void WallPartization()
        {
            FrameData.Frames.Clear();
            double wallHeight = StaticVariables.viewModel.wall_h;

            double waterH1 = StaticVariables.viewModel.GetGroundWaterH1();
            double waterH2 = StaticVariables.viewModel.GetGroundWaterH2();

            double wallPartStep = wallHeight / (wallHeight * 10);
            int wallPartCount =Convert.ToInt32(Math.Round( (wallHeight/wallPartStep),0,MidpointRounding.ToNegativeInfinity));
            for (int i = 0; i < wallPartCount; i++)
            {
                FrameData frame = new FrameData(new Point(0,Math.Round( i * wallPartStep,6)),new Point(0,Math.Round((i+1)*wallPartStep,6)));
            }
            for (int i = 0;i < FrameData.Frames.Count;i++)
            {
                foreach (var anchor in StaticVariables.viewModel.anchorDatas)
                {                    
                    if (anchor.AnchorDepth > FrameData.Frames[i].StartPoint.Y && anchor.AnchorDepth < FrameData.Frames[i].EndPoint.Y)
                    {
                        FrameData frameUp = new FrameData(FrameData.Frames[i].StartPoint, new Point(0, anchor.AnchorDepth));
                        FrameData frameDown = new FrameData(new Point(0, anchor.AnchorDepth), FrameData.Frames[i].EndPoint);
                        FrameData.Frames.Remove(FrameData.Frames[i]);
                    }
                }
                foreach (var strut in StaticVariables.viewModel.strutDatas)
                {                    
                    if (strut.StrutDepth > FrameData.Frames[i].StartPoint.Y && strut.StrutDepth < FrameData.Frames[i].EndPoint.Y)
                    {
                        FrameData frameUp = new FrameData(FrameData.Frames[i].StartPoint, new Point(0, strut.StrutDepth));
                        FrameData frameDown = new FrameData(new Point(0, strut.StrutDepth), FrameData.Frames[i].EndPoint);
                        FrameData.Frames.Remove(FrameData.Frames[i]);
                    }
                }
                double _layerH = 0;
                foreach (var soilLayer in StaticVariables.viewModel.soilLayerDatas)
                {
                    _layerH += soilLayer.LayerHeight;                    
                    if (_layerH > FrameData.Frames[i].StartPoint.Y && _layerH < FrameData.Frames[i].EndPoint.Y)
                    {
                        FrameData frameUp = new FrameData(FrameData.Frames[i].StartPoint, new Point(0, _layerH));
                        FrameData frameDown = new FrameData(new Point(0, _layerH), FrameData.Frames[i].EndPoint);
                        FrameData.Frames.Remove(FrameData.Frames[i]);
                    }
                }
                if (WpfUtils.GetExHeightForCalculation() > FrameData.Frames[i].StartPoint.Y && WpfUtils.GetExHeightForCalculation() < FrameData.Frames[i].EndPoint.Y)
                {
                    FrameData frameUp = new FrameData(FrameData.Frames[i].StartPoint, new Point(0, WpfUtils.GetExHeightForCalculation()));
                    FrameData frameDown = new FrameData(new Point(0, WpfUtils.GetExHeightForCalculation()), FrameData.Frames[i].EndPoint);
                    FrameData.Frames.Remove(FrameData.Frames[i]);
                }
                if (waterH1 < wallHeight)
                {
                    if (waterH1 > FrameData.Frames[i].StartPoint.Y && waterH1 < FrameData.Frames[i].EndPoint.Y)
                    {
                        FrameData frameUp = new FrameData(FrameData.Frames[i].StartPoint, new Point(0, waterH1));
                        FrameData frameDown = new FrameData(new Point(0, waterH1), FrameData.Frames[i].EndPoint);
                        FrameData.Frames.Remove(FrameData.Frames[i]);
                    }
                }
                if(waterH2 < wallHeight- WpfUtils.GetExHeightForCalculation())
                {
                    if (waterH2 > FrameData.Frames[i].StartPoint.Y && waterH2 < FrameData.Frames[i].EndPoint.Y)
                    {
                        FrameData frameUp = new FrameData(FrameData.Frames[i].StartPoint, new Point(0, waterH2));
                        FrameData frameDown = new FrameData(new Point(0, waterH2), FrameData.Frames[i].EndPoint);
                        FrameData.Frames.Remove(FrameData.Frames[i]);
                    }
                }
            }

            FrameData.Frames.Sort();
        }
        public static void SurchargeToFrameNodes()
        {
            double exH = WpfUtils.GetExHeightForCalculation();

            //point loaddan gelen nokta force ları
            foreach (var pointLoad in StaticVariables.viewModel.PointLoadDatas)
            {
                double mValue = pointLoad.DistanceFromWall / exH;
                foreach (var frame in FrameData.Frames)
                {                    
                    double frameLength = Math.Sqrt((Math.Pow(frame.StartPoint.X - frame.EndPoint.X, 2) + Math.Pow(frame.StartPoint.Y - frame.EndPoint.Y, 2)));
                    double startLength = Math.Sqrt((Math.Pow(0 - frame.StartPoint.X, 2) + Math.Pow(0 - frame.StartPoint.Y, 2)));
                    double endLength = Math.Sqrt((Math.Pow(0 - frame.EndPoint.X, 2) + Math.Pow(0 - frame.EndPoint.Y, 2)));
                    
                    double startN = startLength/ exH;
                    double endN = endLength / exH;
                    
                    double startLoad = 0;
                    double endLoad = 0;
                    if(mValue > 0.4)
                    {
                        startLoad = (1.77 * pointLoad.Load / Math.Pow(exH, 2)) * (Math.Pow(startN, 2)* Math.Pow(mValue,2) / Math.Pow(Math.Pow(startN, 2) + Math.Pow(mValue,2), 3));
                        endLoad = (1.77 * pointLoad.Load / Math.Pow(exH, 2)) * (Math.Pow(endN, 2)* Math.Pow(mValue,2) / Math.Pow(Math.Pow(endN, 2) + Math.Pow(mValue,2), 3));
                    }
                    else
                    {
                        startLoad = (0.28*pointLoad.Load/Math.Pow(exH, 2))*(Math.Pow(startN,2)/Math.Pow(Math.Pow(startN,2)+0.16,3));
                        endLoad = (0.28*pointLoad.Load/Math.Pow(exH, 2))*(Math.Pow(endN,2)/Math.Pow(Math.Pow(endN,2)+0.16,3));
                    }
                    double startNodeForce = ((((startLoad + endLoad) / 2) + startLoad) / 2) * (frameLength / 2);
                    frame.startNodeLoadAndForce.Add(pointLoad, new Tuple<double, double>(startLoad, startNodeForce));
                    double endNodeForce = ((((startLoad + endLoad) / 2) + endLoad) / 2) * (frameLength / 2);
                    frame.endNodeLoadAndForce.Add(pointLoad, new Tuple<double, double>(endLoad, endNodeForce));
                }
            }
            
            //Line loaddan gelen nokta forceları
            foreach (var lineLoad in StaticVariables.viewModel.LineLoadDatas)
            {
                double mValue = lineLoad.DistanceFromWall / exH;
                foreach (var frame in FrameData.Frames)
                {
                    double frameLength = Math.Sqrt((Math.Pow(frame.StartPoint.X - frame.EndPoint.X, 2) + Math.Pow(frame.StartPoint.Y - frame.EndPoint.Y, 2)));
                    double startLength = Math.Sqrt((Math.Pow(0 - frame.StartPoint.X, 2) + Math.Pow(0 - frame.StartPoint.Y, 2)));
                    double endLength = Math.Sqrt((Math.Pow(0 - frame.EndPoint.X, 2) + Math.Pow(0 - frame.EndPoint.Y, 2)));

                    double startN = startLength / exH;
                    double endN = endLength / exH;

                    double startLoad = 0;
                    double endLoad = 0;
                    if (mValue > 0.4)
                    {
                        startLoad = (1.28 * lineLoad.Load / exH) * (startN*Math.Pow(mValue,2) / Math.Pow(Math.Pow(startN, 2) + Math.Pow(mValue, 2), 2));
                        endLoad = (1.28 * lineLoad.Load / exH) * (endN*Math.Pow(mValue, 2) / Math.Pow(Math.Pow(endN, 2) + Math.Pow(mValue, 2), 2));
                    }
                    else
                    {
                        startLoad = (0.203 * lineLoad.Load / exH )* (startN / Math.Pow(Math.Pow(startN, 2) + 0.16, 2));
                        endLoad = (0.203 * lineLoad.Load / exH )* (endN / Math.Pow(Math.Pow(endN, 2) + 0.16, 2));
                    }
                    double startNodeForce = ((((startLoad + endLoad) / 2) + startLoad) / 2) * (frameLength / 2);
                    frame.startNodeLoadAndForce.Add(lineLoad, new Tuple<double, double>(startLoad, startNodeForce));
                    double endNodeForce = ((((startLoad + endLoad) / 2) + endLoad) / 2) * (frameLength / 2);
                    frame.endNodeLoadAndForce.Add(lineLoad, new Tuple<double, double>(endLoad, endNodeForce));
                }
            }
            //strip loaddan gelen nokta forceları
            foreach (var stripLoad in StaticVariables.viewModel.stripLoadDatas)
            {
                double startLoc = stripLoad.DistanceFromWall;
                double endLoc = stripLoad.DistanceFromWall+stripLoad.StripLength;
                double midLoc =startLoc + (endLoc-startLoc)/2;
                double fi = 0 ;
                double Ka = 0 ;
                if(StaticVariables.viewModel.soilLayerDatas.Count > 0)
                {
                    if(StaticVariables.viewModel.soilLayerDatas[0].Soil != null)
                    {
                        fi = StaticVariables.viewModel.soilLayerDatas[0].Soil.SoilFrictionAngle;
                        
                    }
                }
                Ka = Math.Pow(Math.Tan((45-fi/2)*Math.PI/180), 2);

                foreach (var frame in FrameData.Frames)
                {
                    double frameLength = Math.Sqrt((Math.Pow(frame.StartPoint.X - frame.EndPoint.X, 2) + Math.Pow(frame.StartPoint.Y - frame.EndPoint.Y, 2)));
                    double startLength = Math.Sqrt((Math.Pow(0 - frame.StartPoint.X, 2) + Math.Pow(0 - frame.StartPoint.Y, 2)));
                    double endLength = Math.Sqrt((Math.Pow(0 - frame.EndPoint.X, 2) + Math.Pow(0 - frame.EndPoint.Y, 2)));
                    
                    double alfaStart = Math.Atan(midLoc / startLength);
                    double alfaEnd = Math.Atan(endLoc / endLength);
                    double betaStart = Math.Atan(endLoc/startLength)-Math.Atan(startLoc/startLength);
                    double betaEnd = Math.Atan(endLoc/endLength)-Math.Atan(startLoc/endLength);
                    if (startLength == 0)
                    {
                        alfaStart = 0;
                        betaStart = 0;
                    }
                    double startLoad = 0;
                    double endLoad = 0;
                    
                    startLoad = (2 * stripLoad.StartLoad / exH) * (betaStart - (Math.Sin(betaStart) * Math.Cos(2 * alfaStart)));
                    endLoad = (2 * stripLoad.StartLoad / exH) * (betaEnd - (Math.Sin(betaEnd) * Math.Cos(2 * alfaEnd)));
                    if (Ka * stripLoad.StartLoad < startLoad)
                    {
                        startLoad = Ka * stripLoad.StartLoad;
                    }
                    if(Ka * stripLoad.StartLoad < endLoad)
                    {
                        endLoad = Ka * stripLoad.StartLoad;
                        if (startLength == 0)
                        {
                            startLoad = endLoad;
                        }
                    }
                    
                    double startNodeForce = ((((startLoad + endLoad) / 2) + startLoad) / 2) * (frameLength / 2);
                    frame.startNodeLoadAndForce.Add(stripLoad, new Tuple<double, double>(startLoad, startNodeForce));
                    double endNodeForce = ((((startLoad + endLoad) / 2) + endLoad) / 2) * (frameLength / 2);
                    frame.endNodeLoadAndForce.Add(stripLoad, new Tuple<double, double>(endLoad, endNodeForce));
                }
            }
            
            
        }
        public static void WaterLoadToFrameNodes()
        {
            double exH = WpfUtils.GetExHeightForCalculation();
            double _waterDensity = StaticVariables.waterDensity;
            double waterH1 = StaticVariables.viewModel.GetGroundWaterH1();
            double waterH2 = StaticVariables.viewModel.GetGroundWaterH2();
            switch (WpfUtils.GetGroundWaterType(StaticVariables.viewModel.WaterTypeIndex))
            {
                case GroundWaterType.none:
                    break;
                case GroundWaterType.type1:
                    // water load type1
                    foreach (var frame in FrameData.Frames)
                    {
                        double frameLength = Math.Sqrt((Math.Pow(frame.StartPoint.X - frame.EndPoint.X, 2) + Math.Pow(frame.StartPoint.Y - frame.EndPoint.Y, 2)));
                        double startLength = Math.Sqrt((Math.Pow(0 - frame.StartPoint.X, 2) + Math.Pow(0 - frame.StartPoint.Y, 2)));
                        double endLength = Math.Sqrt((Math.Pow(0 - frame.EndPoint.X, 2) + Math.Pow(0 - frame.EndPoint.Y, 2)));


                        double startLoad = 0;
                        double endLoad = 0;
                        if (waterH1 < startLength)
                        {
                            startLoad = (startLength - waterH1) * _waterDensity;
                        }
                        if (waterH1 < endLength)
                        {
                            endLoad = (endLength - waterH1) * _waterDensity;
                        }
                        WaterLoadData waterLoadData = new WaterLoadData() { Type = LoadType.WaterLoad };
                        double startNodeForce = ((((startLoad + endLoad) / 2) + startLoad) / 2) * (frameLength / 2);
                        frame.startNodeLoadAndForce.Add(waterLoadData, new Tuple<double, double>(startLoad, startNodeForce));
                        double endNodeForce = ((((startLoad + endLoad) / 2) + endLoad) / 2) * (frameLength / 2);
                        frame.endNodeLoadAndForce.Add(waterLoadData, new Tuple<double, double>(endLoad, endNodeForce));
                    }
                    break;
                case GroundWaterType.type2:
                    // water load type2
                    foreach (var frame in FrameData.Frames)
                    {
                        double frameLength = Math.Sqrt((Math.Pow(frame.StartPoint.X - frame.EndPoint.X, 2) + Math.Pow(frame.StartPoint.Y - frame.EndPoint.Y, 2)));
                        double startLength = Math.Sqrt((Math.Pow(0 - frame.StartPoint.X, 2) + Math.Pow(0 - frame.StartPoint.Y, 2)));
                        double endLength = Math.Sqrt((Math.Pow(0 - frame.EndPoint.X, 2) + Math.Pow(0 - frame.EndPoint.Y, 2)));
                        double startfrontLength = 0;
                        double endfrontLength = 0;
                        if (startLength > exH + waterH2)
                        {
                            startfrontLength = Math.Sqrt((Math.Pow(0 - frame.StartPoint.X, 2) + Math.Pow(exH + waterH2 - frame.StartPoint.Y, 2)));
                            endfrontLength = Math.Sqrt((Math.Pow(0 - frame.EndPoint.X, 2) + Math.Pow(exH + waterH2 - frame.EndPoint.Y, 2)));
                        }


                        double startLoad = 0;
                        double endLoad = 0;
                        if (waterH1 < startLength)
                        {
                            startLoad = (startLength - waterH1 - startfrontLength) * _waterDensity;

                        }
                        if (waterH1 < endLength)
                        {
                            endLoad = (endLength - waterH1 - endfrontLength) * _waterDensity;


                        }
                        WaterLoadData waterLoadData = new WaterLoadData() { Type = LoadType.WaterLoad };
                        double startNodeForce = ((((startLoad + endLoad) / 2) + startLoad) / 2) * (frameLength / 2);
                        frame.startNodeLoadAndForce.Add(waterLoadData, new Tuple<double, double>(startLoad, startNodeForce));
                        double endNodeForce = ((((startLoad + endLoad) / 2) + endLoad) / 2) * (frameLength / 2);
                        frame.endNodeLoadAndForce.Add(waterLoadData, new Tuple<double, double>(endLoad, endNodeForce));

                    }
                    break;
                case GroundWaterType.type3:
                    // water load type2
                    double scaleWaterLoad = (exH + waterH2 - waterH1) / (StaticVariables.viewModel.wall_h - exH - waterH2);
                    foreach (var frame in FrameData.Frames)
                    {
                        double frameLength = Math.Sqrt((Math.Pow(frame.StartPoint.X - frame.EndPoint.X, 2) + Math.Pow(frame.StartPoint.Y - frame.EndPoint.Y, 2)));
                        double startLength = Math.Sqrt((Math.Pow(0 - frame.StartPoint.X, 2) + Math.Pow(0 - frame.StartPoint.Y, 2)));
                        double endLength = Math.Sqrt((Math.Pow(0 - frame.EndPoint.X, 2) + Math.Pow(0 - frame.EndPoint.Y, 2)));
                        double startfrontLength = 0;
                        double endfrontLength = 0;

                        if (startLength > exH + waterH2)
                        {
                            startfrontLength = Math.Sqrt((Math.Pow(0 - frame.StartPoint.X, 2) + Math.Pow(exH + waterH2 - frame.StartPoint.Y, 2)));
                            endfrontLength = Math.Sqrt((Math.Pow(0 - frame.EndPoint.X, 2) + Math.Pow(exH + waterH2 - frame.EndPoint.Y, 2)));
                        }


                        double startLoad = 0;
                        double endLoad = 0;
                        if (waterH1 < startLength)
                        {
                            startLoad = (startLength - waterH1 - startfrontLength) * _waterDensity - (startfrontLength * _waterDensity * scaleWaterLoad);

                        }
                        if (waterH1 < endLength)
                        {
                            endLoad = (endLength - waterH1 - endfrontLength) * _waterDensity - (endfrontLength * _waterDensity * scaleWaterLoad);
                        }
                        WaterLoadData waterLoadData = new WaterLoadData() { Type = LoadType.WaterLoad };
                        double startNodeForce = ((((startLoad + endLoad) / 2) + startLoad) / 2) * (frameLength / 2);
                        frame.startNodeLoadAndForce.Add(waterLoadData, new Tuple<double, double>(startLoad, startNodeForce));
                        double endNodeForce = ((((startLoad + endLoad) / 2) + endLoad) / 2) * (frameLength / 2);
                        frame.endNodeLoadAndForce.Add(waterLoadData, new Tuple<double, double>(endLoad, endNodeForce));
                    }
                    break;
                default:
                    break;
            }
        }
        public static void EffectiveStressToFrameNodes()
        {
            FrameData.Frames.Reverse();

            double exH = WpfUtils.GetExHeightForCalculation();
            double wallH = StaticVariables.viewModel.GetWallHeight();
            double _waterDensity = StaticVariables.waterDensity;
            double waterH1 = StaticVariables.viewModel.GetGroundWaterH1();
            double waterH2 = StaticVariables.viewModel.GetGroundWaterH2();
            // water load type1
            double startLoad = 0;
            double endLoad = 0;
            foreach (var frame in FrameData.Frames)
            {
                double frameLength = Math.Sqrt((Math.Pow(frame.StartPoint.X - frame.EndPoint.X, 2) + Math.Pow(frame.StartPoint.Y - frame.EndPoint.Y, 2)));
                double startLength = Math.Sqrt((Math.Pow(0 - frame.StartPoint.X, 2) + Math.Pow(0 - frame.StartPoint.Y, 2)));
                double endLength = Math.Sqrt((Math.Pow(0 - frame.EndPoint.X, 2) + Math.Pow(0 - frame.EndPoint.Y, 2)));


                
                double soilLayerHeight = 0;
                SoilData lastSoil = null;
                foreach (var soilLayer in StaticVariables.viewModel.soilLayerDatas)
                {
                    soilLayerHeight += soilLayer.LayerHeight;
                    if(startLength <= soilLayerHeight && soilLayerHeight - soilLayer.LayerHeight < startLength)
                    {
                        if (soilLayer.Soil != null)
                        {
                            
                            if (startLength <= waterH1)
                            {
                                startLoad += (frameLength*soilLayer.Soil.NaturalUnitWeight);
                            }
                            else
                            {
                                startLoad += (frameLength*(soilLayer.Soil.SaturatedUnitWeight - _waterDensity));
                            }
                        }
                    }
                    if (endLength <= soilLayerHeight && soilLayerHeight - soilLayer.LayerHeight < endLength)
                    {
                        if (soilLayer.Soil != null)
                        {
                            lastSoil = soilLayer.Soil;
                            if (endLength <= waterH1)
                            {
                                endLoad += (frameLength * soilLayer.Soil.NaturalUnitWeight);
                            }
                            else
                            {
                                endLoad +=  (frameLength * (soilLayer.Soil.SaturatedUnitWeight - _waterDensity));
                            }
                        }
                    }
                    if (soilLayer.Soil != null)
                    {
                        lastSoil = soilLayer.Soil;
                    }
                }

                //duvardan küçükse
                if(soilLayerHeight < wallH)
                {
                    if (startLength <= wallH && soilLayerHeight < startLength)
                    {
                        if (lastSoil != null)
                        {
                            if (startLength <= waterH1)
                            {
                                startLoad += (frameLength * lastSoil.NaturalUnitWeight);
                            }
                            else
                            {
                                startLoad += (frameLength * (lastSoil.SaturatedUnitWeight - _waterDensity));
                            }
                        }
                    }
                    if (endLength <= wallH && soilLayerHeight < endLength)
                    {
                        if (lastSoil != null)
                        {

                            if (endLength <= waterH1)
                            {
                                endLoad += (frameLength * lastSoil.NaturalUnitWeight);
                            }
                            else
                            {
                                endLoad += (frameLength * (lastSoil.SaturatedUnitWeight - _waterDensity));
                            }
                        }
                    }
                }
                
                EffectiveStress effectiveStress = new EffectiveStress() { Type = LoadType.EffectiveStress };
                double startNodeForce = ((((startLoad + endLoad) / 2) + startLoad) / 2) * (frameLength / 2);
                frame.startNodeLoadAndForce.Add(effectiveStress,new Tuple<double,double>(startLoad,startNodeForce));
                double endNodeForce = ((((startLoad + endLoad) / 2) + endLoad) / 2) * (frameLength / 2);
                frame.endNodeLoadAndForce.Add(effectiveStress, new Tuple<double, double>(endLoad, endNodeForce));
                Debug.WriteLine(endLoad);
            }
        }
    }
}
