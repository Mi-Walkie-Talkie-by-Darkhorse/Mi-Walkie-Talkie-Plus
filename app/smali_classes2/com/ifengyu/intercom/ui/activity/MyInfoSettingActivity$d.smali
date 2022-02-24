.class Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$d;
.super Ljava/lang/Object;
.source "MyInfoSettingActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/lite/dialog/list/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->e(I)V

    return-void
.end method
