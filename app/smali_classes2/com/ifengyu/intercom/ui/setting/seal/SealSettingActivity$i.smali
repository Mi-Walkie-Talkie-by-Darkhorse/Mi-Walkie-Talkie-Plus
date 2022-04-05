.class Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/q$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->z()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$i;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x3

    if-gt p2, p1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->E()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$i;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$i;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->d(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;I)V

    :cond_1
    :goto_0
    return-void
.end method
