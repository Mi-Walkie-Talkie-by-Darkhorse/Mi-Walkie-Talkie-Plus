.class Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder$2;
.super Ljava/lang/Object;
.source "UserInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->create()Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;

.field final synthetic val$dialog:Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder$2;->val$dialog:Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder$2;->val$dialog:Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;->dismiss()V

    return-void
.end method
