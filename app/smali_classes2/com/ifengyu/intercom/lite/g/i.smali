.class public final synthetic Lcom/ifengyu/intercom/lite/g/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/g/t;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/g/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/g/i;->a:Lcom/ifengyu/intercom/lite/g/t;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/g/i;->a:Lcom/ifengyu/intercom/lite/g/t;

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/g/t;->a(Landroid/util/Pair;)V

    return-void
.end method
