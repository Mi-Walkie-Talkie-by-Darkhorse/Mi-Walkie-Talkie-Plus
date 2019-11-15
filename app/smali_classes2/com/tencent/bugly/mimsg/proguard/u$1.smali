.class final Lcom/tencent/bugly/mimsg/proguard/u$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/mimsg/proguard/u;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Runnable;

.field private synthetic b:Lcom/tencent/bugly/mimsg/proguard/u;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/mimsg/proguard/u;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/proguard/u$1;->b:Lcom/tencent/bugly/mimsg/proguard/u;

    iput-object p2, p0, Lcom/tencent/bugly/mimsg/proguard/u$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u$1;->b:Lcom/tencent/bugly/mimsg/proguard/u;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/u;->a(Lcom/tencent/bugly/mimsg/proguard/u;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/u$1;->b:Lcom/tencent/bugly/mimsg/proguard/u;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/u;->b(Lcom/tencent/bugly/mimsg/proguard/u;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
