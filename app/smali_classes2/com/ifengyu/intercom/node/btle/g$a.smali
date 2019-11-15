.class final Lcom/ifengyu/intercom/node/btle/g$a;
.super Ljava/lang/Thread;
.source "CustomNamedThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/node/btle/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/node/btle/g;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/node/btle/g;Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/g$a;->a:Lcom/ifengyu/intercom/node/btle/g;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput p4, p0, Lcom/ifengyu/intercom/node/btle/g$a;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/g$a;->b:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
