.class public final synthetic Lcom/ifengyu/intercom/lite/login/c;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/c;->a:Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/c;->a:Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
