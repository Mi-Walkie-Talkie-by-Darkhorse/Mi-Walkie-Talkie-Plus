.class public final synthetic Lcom/ifengyu/intercom/lite/base/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/base/d;->a:Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/d;->a:Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->p()V

    return-void
.end method
