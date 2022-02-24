.class Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$c;
.super Ljava/lang/Object;
.source "MyInfoSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$c;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$c;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    return-void
.end method
