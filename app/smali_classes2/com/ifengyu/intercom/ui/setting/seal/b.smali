.class public final synthetic Lcom/ifengyu/intercom/ui/setting/seal/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/b;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    iput p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/b;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/b;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/b;->b:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(ILcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
