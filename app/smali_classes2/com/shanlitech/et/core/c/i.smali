.class public final Lcom/shanlitech/et/core/c/i;
.super Lcom/shanlitech/et/core/c/f;
.source "PocDispatchManager.java"


# static fields
.field private static final a:Ljava/lang/String; = "i"

.field private static volatile b:Lcom/shanlitech/et/core/c/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/core/c/f;-><init>()V

    return-void
.end method

.method public static e()Lcom/shanlitech/et/core/c/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/i;->b:Lcom/shanlitech/et/core/c/i;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shanlitech/et/core/c/i;

    invoke-direct {v0}, Lcom/shanlitech/et/core/c/i;-><init>()V

    sput-object v0, Lcom/shanlitech/et/core/c/i;->b:Lcom/shanlitech/et/core/c/i;

    .line 3
    :cond_0
    sget-object v0, Lcom/shanlitech/et/core/c/i;->b:Lcom/shanlitech/et/core/c/i;

    return-object v0
.end method


# virtual methods
.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;IILcom/shanlitech/et/model/User;)Z
    .locals 6

    .line 1
    invoke-virtual {p4}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3, p1}, Lcom/shanlitech/et/CoreEngine;->disableUser(JIILjava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "disableUser>>>"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "result = "

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v5, " reason = "

    aput-object v5, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    const/4 p2, 0x5

    const-string v2, " time = "

    aput-object v2, v1, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x6

    aput-object p2, v1, p3

    const/4 p2, 0x7

    const-string p3, " msg = "

    aput-object p3, v1, p2

    const/16 p2, 0x8

    aput-object p1, v1, p2

    const/16 p1, 0x9

    aput-object p4, v1, p1

    invoke-virtual {p0, v1}, Lcom/shanlitech/et/core/c/f;->a([Ljava/lang/Object;)V

    .line 3
    sget p1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v0, p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public d(Lcom/shanlitech/et/model/User;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shanlitech/et/CoreEngine;->enableUser(J)I

    move-result p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "enableUser>>>"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "result = "

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/shanlitech/et/core/c/f;->a([Ljava/lang/Object;)V

    .line 3
    sget v0, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public f(Lcom/shanlitech/et/model/User;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/User;->getRole()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public g(Lcom/shanlitech/et/model/Group;I)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/shanlitech/et/CoreEngine;->setGroupMaxSpeechTime(JI)I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setGroupMaxSpeechTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " maxTime = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    invoke-virtual {p0, v2}, Lcom/shanlitech/et/core/c/f;->a([Ljava/lang/Object;)V

    .line 3
    sget p1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public h(Lcom/shanlitech/et/model/Group;JI)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3, p4}, Lcom/shanlitech/et/CoreEngine;->setMemberPriority(JJI)I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMemberPriority:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " uid = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " priority = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    invoke-virtual {p0, v2}, Lcom/shanlitech/et/core/c/f;->a([Ljava/lang/Object;)V

    .line 3
    sget p1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public i(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/Member;I)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/shanlitech/et/core/c/i;->h(Lcom/shanlitech/et/model/Group;JI)Z

    move-result p1

    return p1
.end method

.method public j(Lcom/shanlitech/et/model/Group;I)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/shanlitech/et/CoreEngine;->setGroupPriority(JI)I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setGroupPriority:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " priority = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    invoke-virtual {p0, v2}, Lcom/shanlitech/et/core/c/f;->a([Ljava/lang/Object;)V

    .line 3
    sget p1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public k([JZ)Z
    .locals 6

    .line 1
    invoke-static {p1, p2}, Lcom/shanlitech/et/CoreEngine;->setUsersChatEnabled([JZ)I

    move-result v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "setUsersChatEnabled>>>"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "result = "

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v5, " uids = "

    aput-object v5, v1, v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x4

    aput-object p1, v1, v2

    const/4 p1, 0x5

    const-string v2, " enabled = "

    aput-object v2, v1, p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v1, p2

    invoke-virtual {p0, v1}, Lcom/shanlitech/et/core/c/f;->a([Ljava/lang/Object;)V

    .line 3
    sget p1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v0, p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public varargs l(Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;I[Lcom/shanlitech/et/model/User;)Z
    .locals 7

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    .line 1
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v5, p3, v3

    .line 2
    sget-object v6, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->b:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    if-ne p1, v6, :cond_2

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {v5}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v4

    if-eqz p2, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-static {v4, v5, v6}, Lcom/shanlitech/et/CoreEngine;->setUserLowpower(JZ)I

    move-result v4

    sget v5, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v4, v5, :cond_1

    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_1
    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v5}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->a()I

    move-result v6

    invoke-static {v4, v5, v6, p2}, Lcom/shanlitech/et/CoreEngine;->updateUserConfigure(JII)I

    move-result v4

    sget v5, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v4, v5, :cond_1

    goto :goto_2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v0, v4

    :cond_4
    return v0
.end method
