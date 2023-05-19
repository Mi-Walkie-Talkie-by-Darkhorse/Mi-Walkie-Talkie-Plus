.class public Lcom/huawei/hms/scankit/p/T;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/huawei/hms/scankit/p/U;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/scankit/p/U;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/U;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/T;->a:Lcom/huawei/hms/scankit/p/U;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/huawei/hms/scankit/p/T;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/huawei/hms/scankit/p/T;->a:Lcom/huawei/hms/scankit/p/U;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/hms/scankit/p/U;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/huawei/hms/scankit/p/T;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/huawei/hms/scankit/p/T;->a:Lcom/huawei/hms/scankit/p/U;

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p0, p1}, Lcom/huawei/hms/scankit/p/U;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    sget-object v0, Lcom/huawei/hms/scankit/p/T;->a:Lcom/huawei/hms/scankit/p/U;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/U;->b(I)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/huawei/hms/scankit/p/T;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/huawei/hms/scankit/p/T;->a:Lcom/huawei/hms/scankit/p/U;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/hms/scankit/p/U;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 2

    sget-object v0, Lcom/huawei/hms/scankit/p/T;->a:Lcom/huawei/hms/scankit/p/U;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/U;->b(I)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/huawei/hms/scankit/p/T;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/huawei/hms/scankit/p/T;->a:Lcom/huawei/hms/scankit/p/U;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/hms/scankit/p/U;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 2

    sget-object v0, Lcom/huawei/hms/scankit/p/T;->a:Lcom/huawei/hms/scankit/p/U;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/U;->b(I)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/huawei/hms/scankit/p/T;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/huawei/hms/scankit/p/T;->a:Lcom/huawei/hms/scankit/p/U;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0, p1}, Lcom/huawei/hms/scankit/p/U;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d()Z
    .locals 2

    sget-object v0, Lcom/huawei/hms/scankit/p/T;->a:Lcom/huawei/hms/scankit/p/U;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/U;->b(I)Z

    move-result v0

    return v0
.end method
