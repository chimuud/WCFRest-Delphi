using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Web.Routing;

namespace WcfRestService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "MyFamily" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select MyFamily.svc or MyFamily.svc.cs at the Solution Explorer and start debugging.
    public class MyFamily : IMyFamily
    {
        private FamilyEntities db = new FamilyEntities();
        public void DoWork()
        {
        }
        public MemberInfo GetMember(string id)
        {
            int ID = Convert.ToInt32(id);
            Member member = db.Members.Find(ID);
            if (member == null)
                return null;
            else
            {
                MemberInfo meminfo = new MemberInfo(member.ID, member.FirstName, member.MiddleName, member.LastName, member.Age);
                return meminfo;
            }
        }
        public MemberInfo GetMemberByName(string FirstName, string LastName)
        {
            try
            {
                var member = db.Members.Where(x => x.FirstName.ToUpper() == FirstName.ToUpper() && x.LastName.ToUpper() == LastName.ToUpper())
                    .Select(x => new { x.ID, x.FirstName, x.MiddleName, x.LastName, x.Age }).First();
                if (member == null)
                    return null;
                else
                {
                    MemberInfo meminfo = new MemberInfo(member.ID, member.FirstName, member.MiddleName, member.LastName, member.Age);
                    return meminfo;
                }
            }
            catch
            {
                return null;
            }
        }
        public IList<MemberInfo> GetMembers()
        {
            IList<MemberInfo> memberList = new List<MemberInfo>();
            foreach (Member member in db.Members)
            {
                memberList.Add(new MemberInfo(member.ID, member.FirstName, member.MiddleName, member.LastName, member.Age));
            }
            return memberList;
        }
        public int AddMember()
        {
            
            return 1;
        }
    }
}
