﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExDesign.Scripts
{
    public static class StaticEvents
    {
        public static Action UnitChangeEvent;
        public static Action<Stage> StageChangeEvent;
        public static Action<Stage> SetStageEvent;
    }
}
