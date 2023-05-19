.class public final Lcom/shanlitech/et/CoreEngine;
.super Ljava/lang/Object;
.source "CoreEngine.java"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/w;->a()Landroid/app/Application;

    move-result-object v2

    const-string v3, "libs"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/libettoc.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SL-LIBS-1"

    invoke-static {v2, v1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/libs/libettoc.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/w;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shanlitech/et/core/b;->e(Landroid/content/Context;)Lcom/shanlitech/et/core/b;

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "flag_bad_so"

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/shanlitech/et/core/b;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v1, "SL-LIBS-ERROR"

    const-string v4, "\u5916\u7f6e\u7684\u5e93\u5b58\u5728\u5f02\u5e38"

    .line 8
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v1, v3, v2}, Lcom/shanlitech/et/core/b;->h(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SL-LIBS-2"

    invoke-static {v2, v1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/shanlitech/et/hal/Hal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/shanlitech/et/c/g;->b(Landroid/content/Context;Ljava/io/File;)Z

    move-result v1

    const-string v2, "SL-LIBS"

    if-eqz v1, :cond_3

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize: \u52a0\u8f7d\u4e86:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "ettoc"

    .line 13
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "static initializer: \u52a0\u8f7d\u4e86\u9ed8\u8ba4\u7684,\u56e0\u4e3asdcard\u6ca1\u6709\u5907\u7528"

    .line 14
    invoke-static {v2, v1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/shanlitech/et/core/b;->l(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 17
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x272

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "63d39f1c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2022-11-16 17:11:51"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6838\u5fc3\u5e93\u7248\u672c"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native SetConfirmJoinGroup(JZ)I
.end method

.method public static native SetGroupDnd(JZ)I
.end method

.method public static native SetLockingGroup(JZ)I
.end method

.method public static native changeEmail(Ljava/lang/String;)I
.end method

.method public static native changeGroupAvatar(JLjava/lang/String;)I
.end method

.method public static native changeGroupDesc(JLjava/lang/String;)I
.end method

.method public static native changeGroupName(JLjava/lang/String;)I
.end method

.method public static native changeName(Ljava/lang/String;)I
.end method

.method public static native changePassword(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native changePhone(Ljava/lang/String;)I
.end method

.method public static native createGroup(Ljava/lang/String;[Ljava/lang/String;IZZLjava/lang/String;)I
.end method

.method public static native createInviteSession(J[Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native deleteContactInvition([J)I
.end method

.method public static native deleteGroupInvition([J)I
.end method

.method public static native deleteSession(J)I
.end method

.method public static native deliverLocationInfo(Ljava/lang/String;DDDIDDLjava/lang/String;JZ)I
.end method

.method public static native deliverMsg(Ljava/lang/String;[B)I
.end method

.method public static native deliverTerminalInfo(Ljava/lang/String;IILjava/lang/String;)I
.end method

.method public static native destroyGroup(J)I
.end method

.method public static native destroyGroups([J)I
.end method

.method public static native disableUser(JIILjava/lang/String;)I
.end method

.method public static native enableUser(J)I
.end method

.method public static native externalMsgToUsers([JLjava/lang/String;)I
.end method

.method public static native getCurrentGroup()Lcom/shanlitech/et/model/Group;
.end method

.method public static native getCurrentUser()Lcom/shanlitech/et/model/User;
.end method

.method public static native getDND()Z
.end method

.method public static native getDefaultGroupId()J
.end method

.method public static native getGroupByGid(J)Lcom/shanlitech/et/model/Group;
.end method

.method public static native getGroupList(Z)[Lcom/shanlitech/et/model/Group;
.end method

.method public static native getGroupListBySession(Z)[Lcom/shanlitech/et/model/Group;
.end method

.method public static native getIngroupStatus()I
.end method

.method public static native getListenGroupList(Z)[Lcom/shanlitech/et/model/Group;
.end method

.method public static native getLockedGroup()J
.end method

.method public static native getMemberList(JIIZ)[Lcom/shanlitech/et/model/Member;
.end method

.method public static native getOnlineStatus()I
.end method

.method public static native getPlayingSoundUser()Lcom/shanlitech/et/model/User;
.end method

.method public static native getUserCfgByUid(J)Lcom/shanlitech/et/model/UserConfigure;
.end method

.method public static native getUsers([J)[Lcom/shanlitech/et/model/User;
.end method

.method public static native getWatchGroups()[J
.end method

.method public static native invite(J[Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native isAudioEnabled()Z
.end method

.method public static native isJoinDefaultGroup()Z
.end method

.method public static native isListening()Z
.end method

.method public static native isListeningGroup(J)Z
.end method

.method public static native isLocateOn()Z
.end method

.method public static native isLogOpened()Z
.end method

.method public static native isMuted()Z
.end method

.method public static native isSpeaking()Z
.end method

.method public static native joinGroup(JILjava/lang/String;ILjava/lang/String;)I
.end method

.method public static native leaveGroup()I
.end method

.method public static native listenGroup(JZ)Z
.end method

.method public static native listenGroupEx([J)I
.end method

.method public static native login(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public static native logout()I
.end method

.method public static native makeContacts([Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native mute(Z)Z
.end method

.method public static native notifyTTS(I)I
.end method

.method public static playAudioFile(ILjava/lang/String;J)I
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/shanlitech/et/CoreEngine;->playAudioFile(ILjava/lang/String;JIII)I

    move-result p0

    return p0
.end method

.method public static native playAudioFile(ILjava/lang/String;JIII)I
.end method

.method public static playAudioFile(Ljava/lang/String;II)I
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    move v6, p2

    .line 2
    invoke-static/range {v0 .. v6}, Lcom/shanlitech/et/CoreEngine;->playAudioFile(ILjava/lang/String;JIII)I

    move-result p0

    return p0
.end method

.method public static native queryContactInvition(J)I
.end method

.method public static native queryContacts()I
.end method

.method public static native queryGroupInvition(J)I
.end method

.method public static native queryGroups()I
.end method

.method public static native queryListenGroups()I
.end method

.method public static native queryUserNotes()I
.end method

.method public static native queryUsers()I
.end method

.method public static native quitGroup(J)I
.end method

.method public static native quitGroups([J)I
.end method

.method public static native readConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native readContact(J)I
.end method

.method public static native readGroup(J)I
.end method

.method public static native realtimeReportToGroup(ZJ)I
.end method

.method public static native realtimeReportToUsers(Z[J)I
.end method

.method public static native recorderStart(Ljava/lang/String;)I
.end method

.method public static native recorderStop()I
.end method

.method public static native removeContacts([Ljava/lang/String;)I
.end method

.method public static native removeMembers(J[Ljava/lang/String;)I
.end method

.method public static native reportExcept(I)I
.end method

.method public static native reportLocation(DDDI)I
.end method

.method public static native reportMsgToGroup(JLjava/lang/String;)I
.end method

.method public static native reportPositionToGroup(ZJDDDILjava/lang/String;)I
.end method

.method public static native reportPositionToUsers(Z[JDDDILjava/lang/String;)I
.end method

.method public static native responseContact(JZ)I
.end method

.method public static native responseGroup(JZZ)I
.end method

.method public static native responseJoinSession(JJZ)I
.end method

.method public static native responseSession(JZI)I
.end method

.method public static native runExcept()I
.end method

.method public static native searchAccount(Ljava/lang/String;)I
.end method

.method public static native sendPing(I)I
.end method

.method public static native setAvatar(Ljava/lang/String;)I
.end method

.method public static native setDND(Z)I
.end method

.method public static native setGroupMaxSpeechTime(JI)I
.end method

.method public static native setGroupPriority(JI)I
.end method

.method public static native setJoinDefaultGroup(Z)Z
.end method

.method public static native setLockedGroup(J)I
.end method

.method public static native setLogFile(ZLjava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native setLogLevel(IZ)I
.end method

.method public static native setMemberMaxSpeechTime(JJI)I
.end method

.method public static native setMemberPriority(JJI)I
.end method

.method public static native setMemberTop(J[JZ)I
.end method

.method public static native setPlayerMuted(Z)Z
.end method

.method public static native setRecorderMuted(Z)Z
.end method

.method public static native setSelfNameInGroup(JLjava/lang/String;)I
.end method

.method public static native setSex(I)I
.end method

.method public static native setUserDefaultGroup(JJ)I
.end method

.method public static native setUserLowpower(JZ)I
.end method

.method public static native setUserNotes([J[Ljava/lang/String;)I
.end method

.method public static native setUsersChatEnabled([JZ)I
.end method

.method public static native startSession(J)I
.end method

.method public static native startSpeak()I
.end method

.method public static native stopSession(JI)I
.end method

.method public static native stopSpeak()I
.end method

.method public static native transferGroup(JJ)I
.end method

.method public static native ttsEnable(Z)Z
.end method

.method public static native ttsGetLanguage()I
.end method

.method public static native ttsIsEnabled()Z
.end method

.method public static native ttsSetLanguage(I)I
.end method

.method public static native updatePassword(Ljava/lang/String;)I
.end method

.method public static native updateToken(J)I
.end method

.method public static native updateUserConfigure(JII)I
.end method

.method public static native version()Ljava/lang/String;
.end method

.method public static native writeConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method
