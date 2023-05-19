.class Lcom/huawei/hms/scankit/p/Lc;
.super Ljava/util/TimerTask;
.source "HaLog60001.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/p/Kc$b;->a(Lcom/huawei/hms/scankit/p/Kc$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/scankit/p/Kc$b;


# direct methods
.method constructor <init>(Lcom/huawei/hms/scankit/p/Kc$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Lc;->a:Lcom/huawei/hms/scankit/p/Kc$b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Lc;->a:Lcom/huawei/hms/scankit/p/Kc$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/Kc$b;->a(Lcom/huawei/hms/scankit/p/Kc$b;Z)Z

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Lc;->a:Lcom/huawei/hms/scankit/p/Kc$b;

    invoke-static {v0}, Lcom/huawei/hms/scankit/p/Kc$b;->b(Lcom/huawei/hms/scankit/p/Kc$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Lc;->a:Lcom/huawei/hms/scankit/p/Kc$b;

    invoke-static {v0}, Lcom/huawei/hms/scankit/p/Kc$b;->a(Lcom/huawei/hms/scankit/p/Kc$b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLog Exception"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
