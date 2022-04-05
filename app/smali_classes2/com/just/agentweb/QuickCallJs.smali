.class public interface abstract Lcom/just/agentweb/QuickCallJs;
.super Ljava/lang/Object;


# virtual methods
.method public abstract quickCallJs(Ljava/lang/String;)V
.end method

.method public varargs abstract quickCallJs(Ljava/lang/String;Landroid/webkit/ValueCallback;[Ljava/lang/String;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public varargs abstract quickCallJs(Ljava/lang/String;[Ljava/lang/String;)V
.end method
