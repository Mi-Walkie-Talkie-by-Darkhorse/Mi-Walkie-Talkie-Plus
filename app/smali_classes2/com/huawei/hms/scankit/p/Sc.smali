.class Lcom/huawei/hms/scankit/p/Sc;
.super Ljava/lang/Thread;
.source "HiAnalyticsLogExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/p/Tc;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/scankit/p/Tc;


# direct methods
.method constructor <init>(Lcom/huawei/hms/scankit/p/Tc;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Sc;->a:Lcom/huawei/hms/scankit/p/Tc;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Sc;->a:Lcom/huawei/hms/scankit/p/Tc;

    invoke-static {v0}, Lcom/huawei/hms/scankit/p/Tc;->a(Lcom/huawei/hms/scankit/p/Tc;)V

    return-void
.end method
