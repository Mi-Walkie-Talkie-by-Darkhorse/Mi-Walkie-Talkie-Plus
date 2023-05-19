.class public final synthetic Lcom/ifengyu/intercom/ui/talk/v2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/talk/TalkFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/talk/TalkFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/v2;->a:Lcom/ifengyu/intercom/ui/talk/TalkFragment;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/v2;->a:Lcom/ifengyu/intercom/ui/talk/TalkFragment;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/talk/TalkFragment;->J3(Landroid/content/DialogInterface;)V

    return-void
.end method
