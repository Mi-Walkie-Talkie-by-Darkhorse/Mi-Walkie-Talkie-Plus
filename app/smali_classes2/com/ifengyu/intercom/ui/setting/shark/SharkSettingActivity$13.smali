.class Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$13;
.super Ljava/lang/Object;
.source "SharkSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$13;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$13;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    const v1, 0x7f0901f4

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    return-void
.end method
