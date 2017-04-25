namespace Pathfinding.Serialization.JsonFx
{
    using System;
    using System.Collections.Generic;

    public abstract class JsonConverter
    {
        protected JsonConverter()
        {
        }

        public abstract bool CanConvert(Type t);
        public double CastDouble(object o)
        {
            double num;
            if (o == null)
            {
                return 0.0;
            }
            try
            {
                num = Convert.ToDouble(o);
            }
            catch (Exception exception)
            {
                throw new JsonDeserializationException("Cannot cast object to double. Expected double, got " + o.GetType(), exception, 0);
            }
            return num;
        }

        public float CastFloat(object o)
        {
            float num;
            if (o == null)
            {
                return 0f;
            }
            try
            {
                num = Convert.ToSingle(o);
            }
            catch (Exception exception)
            {
                throw new JsonDeserializationException("Cannot cast object to float. Expected float, got " + o.GetType(), exception, 0);
            }
            return num;
        }

        public object Read(JsonReader reader, Type type, Dictionary<string, object> value)
        {
            return this.ReadJson(type, value);
        }

        public abstract object ReadJson(Type type, Dictionary<string, object> value);

        public abstract Dictionary<string, object> WriteJson(Type type, object value);
    }
}

