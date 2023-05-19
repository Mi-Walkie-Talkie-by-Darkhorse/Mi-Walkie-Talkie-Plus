.class public Lcom/huawei/hms/scankit/p/ea;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/huawei/hms/scankit/p/fa;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/fa;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/ea;->a:Lcom/huawei/hms/scankit/p/fa;

    iput-object p2, p0, Lcom/huawei/hms/scankit/p/ea;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/huawei/hms/scankit/p/fa;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ea;->a:Lcom/huawei/hms/scankit/p/fa;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ea;->b:Ljava/lang/String;

    return-object v0
.end method
