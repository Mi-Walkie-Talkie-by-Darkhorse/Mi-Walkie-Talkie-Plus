.class public Lcom/ifengyu/talk/d;
.super Ljava/lang/Object;
.source "SlTalkClient.java"


# static fields
.field public static final h:Ljava/lang/String;

.field private static i:Lcom/ifengyu/talk/d;


# instance fields
.field private a:Lcom/ifengyu/talk/f/a0;

.field private b:Lcom/ifengyu/talk/f/c0;

.field private c:Lcom/ifengyu/talk/f/d0;

.field private d:Lcom/ifengyu/talk/f/g0;

.field private e:Lcom/ifengyu/talk/f/f0;

.field private f:Lcom/ifengyu/talk/f/b0;

.field private g:Lcom/ifengyu/talk/f/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ifengyu/library/a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "speech"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/talk/d;->h:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lcom/shanlitech/et/model/Group;)[Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getAvatar()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0

    :cond_0
    new-array p0, v2, [Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/ifengyu/library/c/a;->c:Ljava/lang/String;

    aput-object v0, p0, v1

    return-object p0
.end method

.method public static d(Lcom/ifengyu/talk/http/entity/TempGroup;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGname()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget v0, Lcom/ifengyu/talk/R$string;->group_default_name_s:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/shanlitech/et/model/Group;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget v0, Lcom/ifengyu/talk/R$string;->group_default_name_s:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/shanlitech/et/model/Member;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Member;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Member;->getNickName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static l(Lcom/ifengyu/talk/http/entity/TempGroup;)[Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/talk/http/entity/TempGroup;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/talk/http/entity/TempGroup;->getAvatar()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0

    :cond_0
    new-array p0, v2, [Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/ifengyu/library/c/a;->c:Ljava/lang/String;

    aput-object v0, p0, v1

    return-object p0
.end method

.method public static m(Lcom/shanlitech/et/model/Group;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/f/a0;->f()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/ifengyu/talk/d;->o(Lcom/shanlitech/et/model/Group;J)Z

    move-result p0

    return p0
.end method

.method public static n(Lcom/ifengyu/talk/http/entity/TempGroup;J)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/talk/http/entity/TempGroup;->getOwner()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static o(Lcom/shanlitech/et/model/Group;J)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getCreator()J

    move-result-wide v1

    cmp-long p0, v1, p1

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private p(Lcom/shanlitech/et/model/Account;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/talk/f/a0;

    invoke-direct {v0, p1}, Lcom/ifengyu/talk/f/a0;-><init>(Lcom/shanlitech/et/model/Account;)V

    iput-object v0, p0, Lcom/ifengyu/talk/d;->a:Lcom/ifengyu/talk/f/a0;

    .line 2
    new-instance v0, Lcom/ifengyu/talk/f/c0;

    invoke-direct {v0, p1}, Lcom/ifengyu/talk/f/c0;-><init>(Lcom/shanlitech/et/model/Account;)V

    iput-object v0, p0, Lcom/ifengyu/talk/d;->b:Lcom/ifengyu/talk/f/c0;

    .line 3
    new-instance v0, Lcom/ifengyu/talk/f/d0;

    invoke-direct {v0, p1}, Lcom/ifengyu/talk/f/d0;-><init>(Lcom/shanlitech/et/model/Account;)V

    iput-object v0, p0, Lcom/ifengyu/talk/d;->c:Lcom/ifengyu/talk/f/d0;

    .line 4
    new-instance v0, Lcom/ifengyu/talk/f/g0;

    invoke-direct {v0, p1}, Lcom/ifengyu/talk/f/g0;-><init>(Lcom/shanlitech/et/model/Account;)V

    iput-object v0, p0, Lcom/ifengyu/talk/d;->d:Lcom/ifengyu/talk/f/g0;

    .line 5
    new-instance v0, Lcom/ifengyu/talk/f/f0;

    invoke-direct {v0, p1}, Lcom/ifengyu/talk/f/f0;-><init>(Lcom/shanlitech/et/model/Account;)V

    iput-object v0, p0, Lcom/ifengyu/talk/d;->e:Lcom/ifengyu/talk/f/f0;

    .line 6
    new-instance v0, Lcom/ifengyu/talk/f/b0;

    invoke-direct {v0, p1}, Lcom/ifengyu/talk/f/b0;-><init>(Lcom/shanlitech/et/model/Account;)V

    iput-object v0, p0, Lcom/ifengyu/talk/d;->f:Lcom/ifengyu/talk/f/b0;

    .line 7
    new-instance v0, Lcom/ifengyu/talk/f/e0;

    invoke-direct {v0, p1}, Lcom/ifengyu/talk/f/e0;-><init>(Lcom/shanlitech/et/model/Account;)V

    iput-object v0, p0, Lcom/ifengyu/talk/d;->g:Lcom/ifengyu/talk/f/e0;

    return-void
.end method

.method public static r()Lcom/ifengyu/talk/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/talk/d;->i:Lcom/ifengyu/talk/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ifengyu/talk/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ifengyu/talk/d;->i:Lcom/ifengyu/talk/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ifengyu/talk/d;

    invoke-direct {v1}, Lcom/ifengyu/talk/d;-><init>()V

    sput-object v1, Lcom/ifengyu/talk/d;->i:Lcom/ifengyu/talk/d;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ifengyu/talk/d;->i:Lcom/ifengyu/talk/d;

    return-object v0
.end method

.method public static s(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/Group;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getType()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getCreator()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getCreator()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getAvatar()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getAvatar()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method static synthetic t(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/Group;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getCreateTime()I

    move-result p0

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getCreateTime()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method static synthetic u(Lcom/shanlitech/et/model/User;Lcom/shanlitech/et/model/User;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/User;->isMe()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/model/User;->isMe()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_1
    iget v0, p0, Lcom/shanlitech/et/model/User;->online:I

    iget v1, p1, Lcom/shanlitech/et/model/User;->online:I

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 5
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/shanlitech/et/model/User;->online:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic v(Lcom/shanlitech/et/model/Member;Lcom/shanlitech/et/model/Member;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Member;->getInGroupTimeSecond()I

    move-result p0

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Member;->getInGroupTimeSecond()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;)Lcom/ifengyu/talk/models/HistoryMsgModel;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/ifengyu/talk/models/HistoryMsgModel;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/talk/models/HistoryMsgModel;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/ifengyu/talk/d;->x(Lcom/ifengyu/talk/models/HistoryMsgModel;)Lcom/ifengyu/talk/models/HistoryMsgModel;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBodyParse()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static x(Lcom/ifengyu/talk/models/HistoryMsgModel;)Lcom/ifengyu/talk/models/HistoryMsgModel;
    .locals 13
    .param p0    # Lcom/ifengyu/talk/models/HistoryMsgModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;

    const-class v1, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getMsgType()I

    move-result v2

    if-lez v2, :cond_1e

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/talk/f/a0;->f()J

    move-result-wide v2

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getMsgType()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_1b

    const/16 v5, 0xf

    const/4 v8, 0x2

    if-eq v4, v5, :cond_19

    const/4 v5, 0x5

    const-string v9, "\u3001"

    if-eq v4, v5, :cond_13

    const/4 v5, 0x6

    if-eq v4, v5, :cond_d

    const/4 v5, 0x7

    if-eq v4, v5, :cond_4

    const/16 v1, 0x8

    if-eq v4, v1, :cond_2

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    .line 5
    :pswitch_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;

    .line 6
    invoke-virtual {p0, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setBodyParse(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;->getUid()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    .line 8
    sget v0, Lcom/ifengyu/talk/R$string;->message_type_talk:I

    new-array v1, v7, [Ljava/lang/Object;

    sget v2, Lcom/ifengyu/talk/R$string;->is_me:I

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 9
    :cond_0
    sget v1, Lcom/ifengyu/talk/R$string;->message_type_talk:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 10
    :pswitch_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;

    .line 11
    invoke-virtual {p0, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setBodyParse(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;->getUid()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    .line 13
    sget v0, Lcom/ifengyu/talk/R$string;->message_type_is_speaking:I

    new-array v1, v7, [Ljava/lang/Object;

    sget v2, Lcom/ifengyu/talk/R$string;->is_me:I

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 14
    :cond_1
    sget v1, Lcom/ifengyu/talk/R$string;->message_type_is_speaking:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 15
    :cond_2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBody()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/ifengyu/talk/message/msgBody/GroupTransBody;

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/message/msgBody/GroupTransBody;

    .line 16
    invoke-virtual {p0, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setBodyParse(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/GroupTransBody;->getNid()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_3

    .line 18
    sget v0, Lcom/ifengyu/talk/R$string;->message_type_you_are_become_owner:I

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 19
    :cond_3
    sget v1, Lcom/ifengyu/talk/R$string;->message_type_someone_are_become_owner:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/GroupTransBody;->getNname()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 20
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;

    .line 22
    invoke-virtual {p0, v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setBodyParse(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getId()J

    move-result-wide v4

    cmp-long v8, v4, v2

    if-nez v8, :cond_7

    .line 24
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;

    .line 25
    invoke-virtual {v2}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 26
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 29
    :cond_6
    sget v1, Lcom/ifengyu/talk/R$string;->message_type_you_remove_someone_from_group:I

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 30
    :cond_7
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_8

    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getId()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-nez v8, :cond_8

    .line 31
    sget v0, Lcom/ifengyu/talk/R$string;->message_type_someone_exit_group:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;

    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 32
    :cond_8
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :cond_9
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;

    .line 33
    invoke-virtual {v5}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v5}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->getId()J

    move-result-wide v10

    cmp-long v5, v10, v2

    if-nez v5, :cond_9

    const/4 v4, 0x1

    goto :goto_1

    :cond_a
    if-eqz v4, :cond_b

    .line 35
    sget v0, Lcom/ifengyu/talk/R$string;->message_type_you_are_removed_by_owner:I

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 36
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_c
    sget v1, Lcom/ifengyu/talk/R$string;->message_type_someone_are_removed_by_owner:I

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 40
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;

    .line 42
    invoke-virtual {p0, v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setBodyParse(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getIds()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1e

    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_5

    .line 44
    :cond_e
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;

    .line 45
    invoke-virtual {v5}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->getId()J

    move-result-wide v10

    cmp-long v12, v10, v2

    if-nez v12, :cond_f

    .line 46
    sget v5, Lcom/ifengyu/talk/R$string;->is_you:I

    invoke-static {v5}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 47
    :cond_f
    invoke-virtual {v5}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 48
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_11
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 52
    sget v2, Lcom/ifengyu/talk/R$string;->is_you:I

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 53
    sget v0, Lcom/ifengyu/talk/R$string;->message_type_me_enter_group_by_code:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getToken()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 54
    :cond_12
    sget v2, Lcom/ifengyu/talk/R$string;->message_type_someone_enter_group_by_code:I

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 55
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;

    .line 57
    invoke-virtual {p0, v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setBodyParse(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;

    .line 59
    invoke-virtual {v5}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->getId()J

    move-result-wide v10

    cmp-long v12, v10, v2

    if-nez v12, :cond_14

    .line 60
    sget v5, Lcom/ifengyu/talk/R$string;->is_you:I

    invoke-static {v5}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 61
    :cond_14
    invoke-virtual {v5}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 62
    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_16
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getId()J

    move-result-wide v4

    cmp-long v9, v4, v2

    if-nez v9, :cond_17

    .line 66
    sget v1, Lcom/ifengyu/talk/R$string;->message_type_me_invite_someone_to_group:I

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 67
    :cond_17
    sget v2, Lcom/ifengyu/talk/R$string;->is_you:I

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 68
    sget v0, Lcom/ifengyu/talk/R$string;->message_type_other_invite_me_to_group:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 69
    :cond_18
    sget v2, Lcom/ifengyu/talk/R$string;->message_type_other_invite_someone_to_group:I

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 70
    :cond_19
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBody()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/ifengyu/talk/message/msgBody/GroupNameChangeBody;

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/message/msgBody/GroupNameChangeBody;

    .line 71
    invoke-virtual {p0, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setBodyParse(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/GroupNameChangeBody;->getAcc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 73
    sget v1, Lcom/ifengyu/talk/R$string;->message_type_you_change_group_name_to:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/GroupNameChangeBody;->getGname()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 74
    :cond_1a
    sget v1, Lcom/ifengyu/talk/R$string;->message_type_someone_change_group_name_to:I

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/GroupNameChangeBody;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/GroupNameChangeBody;->getGname()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 75
    :cond_1b
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBody()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;

    .line 76
    invoke-virtual {p0, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setBodyParse(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getUid()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_1c

    .line 78
    sget v0, Lcom/ifengyu/talk/R$string;->message_type_talk:I

    new-array v1, v7, [Ljava/lang/Object;

    sget v2, Lcom/ifengyu/talk/R$string;->is_me:I

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 79
    :cond_1c
    sget v1, Lcom/ifengyu/talk/R$string;->message_type_talk:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getUid()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_4

    :cond_1d
    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_4
    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_1e
    :goto_5
    const/4 v0, 0x0

    .line 80
    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 81
    invoke-virtual {p0, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setToWord(Ljava/lang/String;)V

    :cond_1f
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xf69b5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/ifengyu/talk/f/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/d;->a:Lcom/ifengyu/talk/f/a0;

    return-object v0
.end method

.method public b()Lcom/ifengyu/talk/f/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/d;->f:Lcom/ifengyu/talk/f/b0;

    return-object v0
.end method

.method public f()Lcom/ifengyu/talk/f/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/d;->b:Lcom/ifengyu/talk/f/c0;

    return-object v0
.end method

.method public g()Lcom/ifengyu/talk/f/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/d;->c:Lcom/ifengyu/talk/f/d0;

    return-object v0
.end method

.method public i()Lcom/ifengyu/talk/f/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/d;->g:Lcom/ifengyu/talk/f/e0;

    return-object v0
.end method

.method public j()Lcom/ifengyu/talk/f/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/d;->e:Lcom/ifengyu/talk/f/f0;

    return-object v0
.end method

.method public k()Lcom/ifengyu/talk/f/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/d;->d:Lcom/ifengyu/talk/f/g0;

    return-object v0
.end method

.method public q(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/shanlitech/et/c/d;->b()Lcom/shanlitech/et/c/d;

    move-result-object v0

    const-string v1, "SlTalkHelper"

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/c/d;->e(Ljava/lang/String;)Lcom/shanlitech/et/c/d;

    .line 2
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 3
    new-instance v2, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;

    const-string v3, "OkGo_SL"

    invoke-direct {v2, v3}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object v3, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->d:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v2, v3}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->h(Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;)V

    .line 5
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->g(Ljava/util/logging/Level;)V

    .line 6
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 7
    new-instance v2, Lokhttp3/ConnectionPool;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v4, 0x20

    const-wide/16 v5, 0x5

    invoke-direct {v2, v4, v5, v6, v3}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    .line 8
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    .line 9
    invoke-virtual {v5, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    .line 10
    invoke-virtual {v5, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 11
    invoke-static {}, Lb/c/a/a;->h()Lb/c/a/a;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v2, v0}, Lb/c/a/a;->m(Lokhttp3/OkHttpClient;)Lb/c/a/a;

    .line 12
    new-instance v0, Lcom/ifengyu/talk/d$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/talk/d$a;-><init>(Lcom/ifengyu/talk/d;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/shanlitech/et/model/Account;->build(Lcom/shanlitech/et/core/sl/model/IAccountOption;)Lcom/shanlitech/et/model/Account;

    move-result-object p1

    .line 13
    invoke-static {}, Lcom/shanlitech/et/c/d;->b()Lcom/shanlitech/et/c/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/c/d;->c(Ljava/lang/String;)J

    .line 14
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/shanlitech/et/web/b/c/a;->configAccountServer(Ljava/lang/String;)Z

    .line 15
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/shanlitech/et/model/Account;->configAudioServer(Ljava/lang/String;)Z

    .line 16
    invoke-static {}, Lcom/shanlitech/et/c/d;->b()Lcom/shanlitech/et/c/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/c/d;->f(Ljava/lang/String;)J

    .line 17
    sget-object v0, Lcom/ifengyu/talk/a;->a:Lcom/ifengyu/talk/a;

    invoke-static {v0}, Lcom/shanlitech/et/b/b;->d(Ljava/util/Comparator;)V

    .line 18
    sget-object v0, Lcom/ifengyu/talk/c;->a:Lcom/ifengyu/talk/c;

    invoke-static {v0}, Lcom/shanlitech/et/b/b;->f(Ljava/util/Comparator;)V

    .line 19
    sget-object v0, Lcom/ifengyu/talk/b;->a:Lcom/ifengyu/talk/b;

    invoke-static {v0}, Lcom/shanlitech/et/b/b;->e(Ljava/util/Comparator;)V

    .line 20
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/shanlitech/et/model/Account;->configAudioServer(Ljava/lang/String;)Z

    .line 21
    invoke-direct {p0, p1}, Lcom/ifengyu/talk/d;->p(Lcom/shanlitech/et/model/Account;)V

    return-void
.end method
