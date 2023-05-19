.class public Lcom/huawei/hms/scankit/p/p;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/huawei/hms/scankit/p/p;


# instance fields
.field public b:Z

.field public c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/scankit/p/p;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/p;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/p;->a:Lcom/huawei/hms/scankit/p/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/p;->b:Z

    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/p;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/p;->b:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/p;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/huawei/hms/scankit/p/p;->b:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/p;->b:Z

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/p;->b:Z

    return v0
.end method
