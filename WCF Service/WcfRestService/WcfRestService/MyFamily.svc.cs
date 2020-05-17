using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Json;
using System.Data.Entity.Migrations;

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
        private string GetBody()
        {
            var bodybytes = OperationContext.Current.RequestContext.RequestMessage.GetBody<byte[]>();
            return Encoding.Unicode.GetString(bodybytes);
        }
        private Member DeSerializeMember()
        {
            MemoryStream stream = new MemoryStream(Encoding.UTF8.GetBytes(GetBody()));
            stream.Position = 0;

            Member member = new Member();

            DataContractJsonSerializer serializer = new DataContractJsonSerializer(member.GetType());
            member = (Member)serializer.ReadObject(stream);
            return member;
        }
        public int AddMember()
        {
            Member member = DeSerializeMember();
            db.Members.Add(member);
            return db.SaveChanges();
        }
        public int UpdateMember()
        {
            Member member = DeSerializeMember();
            db.Members.AddOrUpdate(member);
            return db.SaveChanges();
        }
        public int DeleteMember(string id)
        {
            int ID = Convert.ToInt32(id);
            Member member = db.Members.Find(ID);
            if (member != null)
            {
                db.Members.Remove(member);
                return 1;
            }
            else
                return 0;
        }
    }
}
