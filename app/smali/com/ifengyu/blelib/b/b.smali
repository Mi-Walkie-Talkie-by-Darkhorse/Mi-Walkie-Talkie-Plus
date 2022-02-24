.class public final synthetic Lcom/ifengyu/blelib/b/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/u2/e;


# instance fields
.field private final synthetic a:Lcom/ifengyu/blelib/b/e;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/blelib/b/e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/blelib/b/b;->a:Lcom/ifengyu/blelib/b/e;

    iput p2, p0, Lcom/ifengyu/blelib/b/b;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/blelib/b/b;->a:Lcom/ifengyu/blelib/b/e;

    iget v1, p0, Lcom/ifengyu/blelib/b/b;->b:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/blelib/b/e;->c(I)V

    return-void
.end method
