.class public final Lcom/huawei/hms/scankit/p/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/scankit/p/s$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static b:Lcom/huawei/hms/scankit/p/s;


# instance fields
.field public c:Lcom/huawei/hms/scankit/p/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/scankit/p/s;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/huawei/hms/scankit/p/s;
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/p/s;->b:Lcom/huawei/hms/scankit/p/s;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/huawei/hms/scankit/p/s;->b()V

    :cond_0
    sget-object v0, Lcom/huawei/hms/scankit/p/s;->b:Lcom/huawei/hms/scankit/p/s;

    return-object v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lcom/huawei/hms/scankit/p/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hms/scankit/p/s;->b:Lcom/huawei/hms/scankit/p/s;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hms/scankit/p/s;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/s;-><init>()V

    sput-object v1, Lcom/huawei/hms/scankit/p/s;->b:Lcom/huawei/hms/scankit/p/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/p/s$a;)Lcom/huawei/hms/scankit/p/w;
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/p/r;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "CryptFactory"

    const-string v0, "crypt type is other"

    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/huawei/hms/scankit/p/x;

    invoke-direct {p1}, Lcom/huawei/hms/scankit/p/x;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/huawei/hms/scankit/p/v;

    invoke-direct {p1}, Lcom/huawei/hms/scankit/p/v;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/huawei/hms/scankit/p/q;

    invoke-direct {p1}, Lcom/huawei/hms/scankit/p/q;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/s;->c:Lcom/huawei/hms/scankit/p/w;

    :goto_1
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/s;->c:Lcom/huawei/hms/scankit/p/w;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a([C[B)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/p/t;->a([C[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/huawei/hms/scankit/p/s$a;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/s$a;->a()I

    move-result p1

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/u;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/u;->a(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
