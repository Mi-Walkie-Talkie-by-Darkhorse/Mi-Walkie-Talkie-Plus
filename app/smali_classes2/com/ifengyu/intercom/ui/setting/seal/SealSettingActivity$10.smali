.class Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$10;
.super Ljava/lang/Object;
.source "SealSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$10;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$10;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$10;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->k()V

    return-void
.end method
