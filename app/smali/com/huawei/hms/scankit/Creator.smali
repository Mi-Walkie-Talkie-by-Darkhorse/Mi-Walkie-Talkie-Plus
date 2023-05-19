.class public Lcom/huawei/hms/scankit/Creator;
.super Lcom/huawei/hms/hmsscankit/api/IRemoteCreator$Stub;
.source "Creator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Creator"


# instance fields
.field private iRemoteDecoderDelegate:Lcom/huawei/hms/scankit/r;

.field private iRemoteHmsDecoderDelegate:Lcom/huawei/hms/scankit/t;

.field private iRemoteViewDelegate:Lcom/huawei/hms/scankit/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/api/IRemoteCreator$Stub;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/scankit/Creator;->iRemoteViewDelegate:Lcom/huawei/hms/scankit/q;

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/scankit/Creator;->iRemoteDecoderDelegate:Lcom/huawei/hms/scankit/r;

    .line 4
    iput-object v0, p0, Lcom/huawei/hms/scankit/Creator;->iRemoteHmsDecoderDelegate:Lcom/huawei/hms/scankit/t;

    return-void
.end method


# virtual methods
.method public newRemoteDecoderDelegate()Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderDelegate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Creator"

    const-string v1, "newRemoteDecoderDelegate()"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/huawei/hms/scankit/r;->a()Lcom/huawei/hms/scankit/r;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/Creator;->iRemoteDecoderDelegate:Lcom/huawei/hms/scankit/r;

    return-object v0
.end method

.method public newRemoteHmsDecoderDelegate()Lcom/huawei/hms/hmsscankit/api/IRemoteHmsDecoderDelegate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Creator"

    const-string v1, "newRemoteHmsDecoderDelegate()"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/huawei/hms/scankit/t;->a()Lcom/huawei/hms/scankit/t;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/Creator;->iRemoteHmsDecoderDelegate:Lcom/huawei/hms/scankit/t;

    return-object v0
.end method

.method public newRemoteViewDelegate(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Creator"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "ScankitRemoteS"

    const-string p2, "Context is null"

    .line 1
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    .line 3
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_5

    .line 5
    check-cast v4, Landroid/os/Bundle;

    const-string v1, "CustomedFlag"

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "FormatValue"

    .line 6
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "RectValue"

    .line 7
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .line 8
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    const-string v8, "TransType"

    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 9
    sput v7, Lcom/huawei/hms/hmsscankit/DetailRect;->HMSSCAN_SDK_VALUE:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_2

    .line 10
    invoke-static {v5}, Lcom/huawei/hms/scankit/util/b;->b(I)I

    move-result v5

    :cond_2
    const-string v8, "return_bitmap"

    .line 11
    invoke-virtual {v4, v8, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "localui"

    .line 12
    invoke-virtual {v4, v9, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    instance-of v4, p1, Landroid/content/Context;

    if-eqz v4, :cond_3

    .line 14
    :try_start_0
    move-object v4, p1

    check-cast v4, Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hms/hmsscankit/j;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, "IllegalAccessException"

    .line 15
    invoke-static {v0, v4}, Lcom/huawei/hms/scankit/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    const-string v4, "InvocationTargetException"

    .line 16
    invoke-static {v0, v4}, Lcom/huawei/hms/scankit/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    const-string v4, "NoSuchMethodException"

    .line 17
    invoke-static {v0, v4}, Lcom/huawei/hms/scankit/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    const-string v4, "ClassNotFoundException"

    .line 18
    invoke-static {v0, v4}, Lcom/huawei/hms/scankit/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    move v0, v3

    move v10, v8

    move v3, v1

    move v1, v7

    move-object v7, v6

    move v6, v5

    goto :goto_2

    .line 19
    :cond_4
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p2

    :cond_5
    move-object v7, v1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 20
    instance-of v3, p1, Landroid/content/Context;

    if-eqz v3, :cond_8

    .line 21
    new-instance v3, Lcom/huawei/hms/scankit/q;

    move-object v5, p1

    check-cast v5, Landroid/content/Context;

    xor-int/lit8 v11, v0, 0x1

    move-object v4, v3

    move-object v8, p2

    move v9, v1

    invoke-direct/range {v4 .. v11}, Lcom/huawei/hms/scankit/q;-><init>(Landroid/content/Context;ILjava/lang/Object;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;ZZZ)V

    iput-object v3, p0, Lcom/huawei/hms/scankit/Creator;->iRemoteViewDelegate:Lcom/huawei/hms/scankit/q;

    goto :goto_3

    .line 22
    :cond_6
    instance-of v2, p1, Landroid/content/Context;

    if-eqz v2, :cond_8

    if-eqz v0, :cond_7

    .line 23
    new-instance v0, Lcom/huawei/hms/scankit/v;

    move-object v5, p1

    check-cast v5, Landroid/content/Context;

    const/4 v9, 0x0

    move-object v4, v0

    move-object v7, p2

    move v8, v1

    invoke-direct/range {v4 .. v9}, Lcom/huawei/hms/scankit/v;-><init>(Landroid/content/Context;ILcom/huawei/hms/feature/dynamic/IObjectWrapper;ZZ)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/Creator;->iRemoteViewDelegate:Lcom/huawei/hms/scankit/q;

    goto :goto_3

    .line 24
    :cond_7
    new-instance v0, Lcom/huawei/hms/scankit/y;

    move-object v5, p1

    check-cast v5, Landroid/content/Context;

    const/4 v9, 0x1

    move-object v4, v0

    move-object v7, p2

    move v8, v1

    invoke-direct/range {v4 .. v9}, Lcom/huawei/hms/scankit/y;-><init>(Landroid/content/Context;ILcom/huawei/hms/feature/dynamic/IObjectWrapper;ZZ)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/Creator;->iRemoteViewDelegate:Lcom/huawei/hms/scankit/q;

    .line 25
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/huawei/hms/scankit/Creator;->iRemoteViewDelegate:Lcom/huawei/hms/scankit/q;

    return-object p1
.end method
