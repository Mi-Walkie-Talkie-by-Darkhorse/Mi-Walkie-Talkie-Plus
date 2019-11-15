package com.mi.mimsgsdk.utils;

public class MnsCommand {
    public static final String COMMAND_VOIP_Ks3Auth_Request = "opensdk.mfas.auth";
    public static final String COMMAND_VOIP_Ks3File_Reuse_Request = "opensdk.Ks3File.Reuse.Request";
    public static final String OPENSDK = "opensdk";
    public static final String OPENSDK_GROUPMSG = "opensdk.groupmsg";
    public static final String OPENSDK_GROUPMSG_PULLOLD = "opensdk.groupmsg.pullold";
    public static final String OPENSDK_GROUPMSG_PUSH = "opensdk.groupmsg.push";
    public static final String OPENSDK_GROUPMSG_SEND = "opensdk.groupmsg.send";
    public static final String OPENSDK_GROUPMSG_SYNC = "opensdk.groupmsg.sync";
    public static final String OPENSDK_ROOMMSG = "opensdk.roommsg";
    public static final String OPENSDK_ROOMMSG_PUSH = "opensdk.roommsg.push";
    public static final String OPENSDK_ROOMMSG_SEND = "opensdk.roommsg.send";
    public static final String OPENSDK_SIGNAL_CHANNEL_CHECK = "opensdk.signal.query_mediaid";
    public static final String OPENSDK_SIGNAL_CONFERENCE_MEMBERS = "opensdk.signal.conference_member";
    public static final String OPENSDK_SIGNAL_MIDEIAID_TO_GUID = "opensdk.user.query_muid";
    public static final String OPENSDK_USERMSG = "opensdk.usermsg";
    public static final String OPENSDK_USERMSG_PULLOLD = "opensdk.usermsg.pullold";
    public static final String OPENSDK_USERMSG_PUSH = "opensdk.usermsg.push";
    public static final String OPENSDK_USERMSG_SEND = "opensdk.usermsg.send";
    public static final String OPENSDK_USERMSG_SYNC = "opensdk.usermsg.sync";
    public static final String UPLOAD_LOG = "opensdk.push.upload_log";

    public interface Scribe {
        public static final String AGORA_LOG = "opensdk.stat.agoralog";
        public static final String COMMON_LOG = "opensdk.stat.commonlog";
    }
}
