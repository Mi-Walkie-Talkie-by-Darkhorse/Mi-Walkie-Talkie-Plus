.class public final Lcom/huawei/hms/scankit/p/Ka;
.super Ljava/lang/Thread;
.source "HiAnalyticsThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/scankit/p/Ka$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Ka;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    new-instance v0, Lcom/huawei/hms/scankit/p/Ka$a;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Ka;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/huawei/hms/scankit/p/Ka$a;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Ka;->b:Landroid/os/Handler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
