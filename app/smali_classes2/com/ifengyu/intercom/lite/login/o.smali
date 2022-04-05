.class public final synthetic Lcom/ifengyu/intercom/lite/login/o;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function3;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/o;->a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/o;->a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
