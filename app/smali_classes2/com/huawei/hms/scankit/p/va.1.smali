.class public Lcom/huawei/hms/scankit/p/va;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/huawei/hms/scankit/p/va;


# instance fields
.field public b:Lcom/huawei/hms/scankit/p/qa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/scankit/p/va;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/va;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/va;->a:Lcom/huawei/hms/scankit/p/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/va;->b:Lcom/huawei/hms/scankit/p/qa;

    return-void
.end method


# virtual methods
.method public a()Lcom/huawei/hms/scankit/p/qa;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/va;->b:Lcom/huawei/hms/scankit/p/qa;

    return-object v0
.end method

.method public a(Lcom/huawei/hms/scankit/p/qa;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/va;->b:Lcom/huawei/hms/scankit/p/qa;

    return-void
.end method
