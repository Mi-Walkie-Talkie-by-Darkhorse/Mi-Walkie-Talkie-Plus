.class public final synthetic Lcom/ifengyu/intercom/lite/g/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/g/t$a;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/g/t$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/g/d;->a:Lcom/ifengyu/intercom/lite/g/t$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/g/d;->a:Lcom/ifengyu/intercom/lite/g/t$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/g/t$a;->c()V

    return-void
.end method
