.class public final synthetic Lcom/ifengyu/intercom/ui/talk/i2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/i2;->a:Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/i2;->a:Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/SessionTalkFragment;->t3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
