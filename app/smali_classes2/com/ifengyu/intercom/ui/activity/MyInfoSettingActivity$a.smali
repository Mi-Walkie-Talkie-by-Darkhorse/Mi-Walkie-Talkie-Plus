.class Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$a;
.super Lcom/ifengyu/library/b/e/a;
.source "MyInfoSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->E0(Ljava/io/File;)V
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
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string p1, "MyInfoSettingActivity"

    const-string v0, "uploadPortrait fail"

    .line 2
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->F(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;Z)V

    return-void
.end method
