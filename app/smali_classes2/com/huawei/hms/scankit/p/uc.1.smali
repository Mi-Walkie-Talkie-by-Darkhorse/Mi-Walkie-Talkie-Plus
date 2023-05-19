.class public final Lcom/huawei/hms/scankit/p/uc;
.super Ljava/lang/Object;
.source "FinderPatternInfo.java"


# instance fields
.field private final a:Lcom/huawei/hms/scankit/p/rc;

.field private final b:Lcom/huawei/hms/scankit/p/rc;

.field private final c:Lcom/huawei/hms/scankit/p/rc;


# direct methods
.method public constructor <init>([Lcom/huawei/hms/scankit/p/rc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/uc;->a:Lcom/huawei/hms/scankit/p/rc;

    const/4 v0, 0x1

    .line 3
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/uc;->b:Lcom/huawei/hms/scankit/p/rc;

    const/4 v0, 0x2

    .line 4
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/uc;->c:Lcom/huawei/hms/scankit/p/rc;

    return-void
.end method


# virtual methods
.method public a()Lcom/huawei/hms/scankit/p/rc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/uc;->a:Lcom/huawei/hms/scankit/p/rc;

    return-object v0
.end method

.method public b()Lcom/huawei/hms/scankit/p/rc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/uc;->b:Lcom/huawei/hms/scankit/p/rc;

    return-object v0
.end method

.method public c()Lcom/huawei/hms/scankit/p/rc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/uc;->c:Lcom/huawei/hms/scankit/p/rc;

    return-object v0
.end method
