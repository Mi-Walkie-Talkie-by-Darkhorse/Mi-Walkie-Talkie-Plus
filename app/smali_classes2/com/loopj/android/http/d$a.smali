.class Lcom/loopj/android/http/d$a;
.super Landroid/os/Handler;
.source "AsyncHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopj/android/http/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/loopj/android/http/d;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/d;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/loopj/android/http/d$a;->a:Lcom/loopj/android/http/d;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/d$a;->a:Lcom/loopj/android/http/d;

    invoke-virtual {v0, p1}, Lcom/loopj/android/http/d;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
