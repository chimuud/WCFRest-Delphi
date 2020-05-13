using System;
using System.Collections;
using System.Collections.Generic;
using System.Deployment.Internal;
using System.Linq;
using System.Linq.Expressions;
using System.Net;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace WcfRestService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IMyFamily" in both code and config file together.
    [ServiceContract]
    public interface IMyFamily
    {
        [OperationContract]
        void DoWork();

        [OperationContract]
        [WebInvoke(RequestFormat = WebMessageFormat.Json, Method = "GET", ResponseFormat = WebMessageFormat.Json)]
        MemberInfo GetMember(string id);

        [OperationContract]
        [WebInvoke(Method = "GET", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        IList<MemberInfo> GetMembers();

        [OperationContract]
        [WebInvoke(RequestFormat = WebMessageFormat.Json, Method = "GET", ResponseFormat = WebMessageFormat.Json)]
        MemberInfo GetMemberByName(string FirstName, string LastName);

        [OperationContract]
        [WebInvoke(RequestFormat = WebMessageFormat.Json, Method = "POST", ResponseFormat = WebMessageFormat.Json)]
        int AddMember();
    }
}
