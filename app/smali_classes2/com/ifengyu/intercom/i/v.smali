.class public final synthetic Lcom/ifengyu/intercom/i/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lno/nordicsemi/android/ble/v2/f;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/i/w0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/i/w0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/v;->a:Lcom/ifengyu/intercom/i/w0;

    iput p2, p0, Lcom/ifengyu/intercom/i/v;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/i/v;->a:Lcom/ifengyu/intercom/i/w0;

    iget v1, p0, Lcom/ifengyu/intercom/i/v;->b:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/w0;->Y0(I)V

    return-void
.end method
