.class public Lcom/ifengyu/intercom/lite/e/j/b;
.super Ljava/lang/Object;

# interfaces
.implements Lno/nordicsemi/android/ble/data/c;


# instance fields
.field private a:Lcom/ifengyu/intercom/lite/e/j/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/lite/e/j/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/e/j/b;->a:Lcom/ifengyu/intercom/lite/e/j/a;

    return-void
.end method


# virtual methods
.method public a([BII)[B
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/e/j/b;->a:Lcom/ifengyu/intercom/lite/e/j/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/e/j/a;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/e/j/b;->a:Lcom/ifengyu/intercom/lite/e/j/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/e/j/a;->g()Z

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/e/j/b;->a:Lcom/ifengyu/intercom/lite/e/j/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/e/j/a;->c()[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
