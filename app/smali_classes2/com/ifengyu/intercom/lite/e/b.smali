.class public final synthetic Lcom/ifengyu/intercom/lite/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/e/f;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/e/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/e/b;->a:Lcom/ifengyu/intercom/lite/e/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/e/b;->a:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/e/f;->B()V

    return-void
.end method
