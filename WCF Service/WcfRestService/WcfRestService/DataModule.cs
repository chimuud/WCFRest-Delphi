using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace WcfRestService
{
    public class DataModule
    {
    }

    [DataContract]
    public class MemberInfo
    {
        [DataMember]
        public int ID { get; set; }
        [DataMember]
        public string FirstName { get; set; }
        [DataMember]
        public string MiddleName { get; set; }
        [DataMember]
        public string LastName { get; set; }
        [DataMember]
        public string Age { get; set; }
        public MemberInfo(int id, string fname, string mname, string lname, string age)
        {
            ID = id;
            FirstName = fname;
            MiddleName = mname;
            LastName = lname;
            Age = age;
        }
    }


}