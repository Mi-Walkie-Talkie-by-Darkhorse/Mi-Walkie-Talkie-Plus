.class public final Lcom/huawei/hms/feature/dynamic/c;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String; = "c"

.field private static final c:Lcom/huawei/hms/feature/dynamic/c;


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/c;

    invoke-direct {v0}, Lcom/huawei/hms/feature/dynamic/c;-><init>()V

    sput-object v0, Lcom/huawei/hms/feature/dynamic/c;->c:Lcom/huawei/hms/feature/dynamic/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/huawei/hms/feature/dynamic/c;
    .locals 1

    sget-object v0, Lcom/huawei/hms/feature/dynamic/c;->c:Lcom/huawei/hms/feature/dynamic/c;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "installed_module_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/huawei/hms/feature/dynamic/c;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Installed module name:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/huawei/hms/feature/dynamic/c;->a:Ljava/util/Set;

    return-void

    :cond_1
    :goto_0
    sget-object p1, Lcom/huawei/hms/feature/dynamic/c;->b:Ljava/lang/String;

    const-string v0, "Get installed module name failed."

    invoke-static {p1, v0}, Lcom/huawei/hms/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/feature/dynamic/c;->a:Ljava/util/Set;

    return-void
.end method
