.class final Lcom/huawei/hms/scankit/p/Eb;
.super Ljava/lang/Object;
.source "UPCEANExtensionSupport.java"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lcom/huawei/hms/scankit/p/Cb;

.field private final c:Lcom/huawei/hms/scankit/p/Db;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/hms/scankit/p/Eb;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hms/scankit/p/Cb;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Cb;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Eb;->b:Lcom/huawei/hms/scankit/p/Cb;

    .line 3
    new-instance v0, Lcom/huawei/hms/scankit/p/Db;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Db;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Eb;->c:Lcom/huawei/hms/scankit/p/Db;

    return-void
.end method


# virtual methods
.method a(ILcom/huawei/hms/scankit/p/ab;I)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/p/Eb;->a:[I

    const/4 v1, 0x0

    invoke-static {p2, p3, v1, v0}, Lcom/huawei/hms/scankit/p/Fb;->a(Lcom/huawei/hms/scankit/p/ab;IZ[I)[I

    move-result-object p3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Eb;->c:Lcom/huawei/hms/scankit/p/Db;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hms/scankit/p/Db;->a(ILcom/huawei/hms/scankit/p/ab;[I)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 3
    :catch_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Eb;->b:Lcom/huawei/hms/scankit/p/Cb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hms/scankit/p/Cb;->a(ILcom/huawei/hms/scankit/p/ab;[I)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    return-object p1
.end method
