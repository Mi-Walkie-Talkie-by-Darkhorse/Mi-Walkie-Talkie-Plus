.class Lorg/osmdroid/events/DelayedMapListener$CallbackTask;
.super Ljava/lang/Object;
.source "DelayedMapListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/events/DelayedMapListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackTask"
.end annotation


# instance fields
.field private final event:Lorg/osmdroid/events/MapEvent;

.field final synthetic this$0:Lorg/osmdroid/events/DelayedMapListener;


# direct methods
.method public constructor <init>(Lorg/osmdroid/events/DelayedMapListener;Lorg/osmdroid/events/MapEvent;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/events/DelayedMapListener$CallbackTask;->this$0:Lorg/osmdroid/events/DelayedMapListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/osmdroid/events/DelayedMapListener$CallbackTask;->event:Lorg/osmdroid/events/MapEvent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/events/DelayedMapListener$CallbackTask;->event:Lorg/osmdroid/events/MapEvent;

    instance-of v0, v0, Lorg/osmdroid/events/ScrollEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/events/DelayedMapListener$CallbackTask;->this$0:Lorg/osmdroid/events/DelayedMapListener;

    iget-object v1, v0, Lorg/osmdroid/events/DelayedMapListener;->wrappedListener:Lorg/osmdroid/events/MapListener;

    iget-object v0, p0, Lorg/osmdroid/events/DelayedMapListener$CallbackTask;->event:Lorg/osmdroid/events/MapEvent;

    check-cast v0, Lorg/osmdroid/events/ScrollEvent;

    invoke-interface {v1, v0}, Lorg/osmdroid/events/MapListener;->onScroll(Lorg/osmdroid/events/ScrollEvent;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/events/DelayedMapListener$CallbackTask;->event:Lorg/osmdroid/events/MapEvent;

    instance-of v0, v0, Lorg/osmdroid/events/ZoomEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/osmdroid/events/DelayedMapListener$CallbackTask;->this$0:Lorg/osmdroid/events/DelayedMapListener;

    iget-object v1, v0, Lorg/osmdroid/events/DelayedMapListener;->wrappedListener:Lorg/osmdroid/events/MapListener;

    iget-object v0, p0, Lorg/osmdroid/events/DelayedMapListener$CallbackTask;->event:Lorg/osmdroid/events/MapEvent;

    check-cast v0, Lorg/osmdroid/events/ZoomEvent;

    invoke-interface {v1, v0}, Lorg/osmdroid/events/MapListener;->onZoom(Lorg/osmdroid/events/ZoomEvent;)Z

    goto :goto_0

    :cond_1
    const-string v0, "OsmDroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/events/DelayedMapListener$CallbackTask;->event:Lorg/osmdroid/events/MapEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
