.class public final synthetic Lcom/ifengyu/intercom/lite/g/c;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/g/s;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/g/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/g/c;->a:Lcom/ifengyu/intercom/lite/g/s;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/g/c;->a:Lcom/ifengyu/intercom/lite/g/s;

    check-cast p1, Lcom/ifengyu/intercom/lite/http/entity/WrapFirmwareInfo;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/g/s;->a(Lcom/ifengyu/intercom/lite/http/entity/WrapFirmwareInfo;)V

    return-void
.end method
