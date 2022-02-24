.class Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$1;
.super Ljava/lang/Object;
.source "GalaxyFDSClientImpl.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;-><init>(Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;


# direct methods
.method constructor <init>(Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$1;->this$0:Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "FDS-multipart-upload-thread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
