.class Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$9;
.super Ljava/lang/Object;
.source "SharkSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field final synthetic b:Z

.field final synthetic c:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$9;->c:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$9;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iput-boolean p3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$9;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$9;->c:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$9;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$9;->b:Z

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    return-void
.end method
