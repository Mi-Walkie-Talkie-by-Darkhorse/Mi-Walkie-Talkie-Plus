.class Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$e;->a:Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$e;->a:Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->finish()V

    return-void
.end method
