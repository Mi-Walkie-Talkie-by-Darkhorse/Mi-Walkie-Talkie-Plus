.class Lcom/ifengyu/intercom/ui/baseui/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$1;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$1;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->finish()V

    return-void
.end method
