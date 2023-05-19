.class public final synthetic Lcom/ifengyu/intercom/device/lite/d/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/lite/d/t$a;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/lite/d/t$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/b;->a:Lcom/ifengyu/intercom/device/lite/d/t$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/b;->a:Lcom/ifengyu/intercom/device/lite/d/t$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/d/t$a;->f()V

    return-void
.end method
