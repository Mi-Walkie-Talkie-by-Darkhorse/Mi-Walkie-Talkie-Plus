.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/u1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/u1;->a:Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/u1;->a:Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;->r3(Landroid/view/View;)V

    return-void
.end method
