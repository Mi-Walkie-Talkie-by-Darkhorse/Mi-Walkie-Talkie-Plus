.class abstract Lcom/huawei/hms/scankit/p/yd;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field static final a:Lcom/huawei/hms/scankit/p/yd;


# instance fields
.field private final b:Lcom/huawei/hms/scankit/p/yd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/wd;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/hms/scankit/p/wd;-><init>(Lcom/huawei/hms/scankit/p/yd;II)V

    sput-object v0, Lcom/huawei/hms/scankit/p/yd;->a:Lcom/huawei/hms/scankit/p/yd;

    return-void
.end method

.method constructor <init>(Lcom/huawei/hms/scankit/p/yd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/yd;->b:Lcom/huawei/hms/scankit/p/yd;

    return-void
.end method


# virtual methods
.method final a()Lcom/huawei/hms/scankit/p/yd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/yd;->b:Lcom/huawei/hms/scankit/p/yd;

    return-object v0
.end method

.method final a(II)Lcom/huawei/hms/scankit/p/yd;
    .locals 1

    .line 2
    new-instance v0, Lcom/huawei/hms/scankit/p/wd;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/hms/scankit/p/wd;-><init>(Lcom/huawei/hms/scankit/p/yd;II)V

    return-object v0
.end method

.method abstract a(Lcom/huawei/hms/scankit/p/ab;[B)V
.end method

.method final b(II)Lcom/huawei/hms/scankit/p/yd;
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/td;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/hms/scankit/p/td;-><init>(Lcom/huawei/hms/scankit/p/yd;II)V

    return-object v0
.end method
