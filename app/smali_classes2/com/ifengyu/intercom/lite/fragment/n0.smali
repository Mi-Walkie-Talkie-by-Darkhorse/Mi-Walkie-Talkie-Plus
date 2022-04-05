.class public final synthetic Lcom/ifengyu/intercom/lite/fragment/n0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/o$k;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/n0;->a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;

    iput p2, p0, Lcom/ifengyu/intercom/lite/fragment/n0;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/n0;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->c(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/n0;->a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;

    iget v1, p0, Lcom/ifengyu/intercom/lite/fragment/n0;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->ao(II)V

    :cond_0
    return-void
.end method