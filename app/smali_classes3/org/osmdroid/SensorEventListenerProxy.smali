.class public Lorg/osmdroid/SensorEventListenerProxy;
.super Ljava/lang/Object;
.source "SensorEventListenerProxy.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private mListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/SensorEventListenerProxy;->mListener:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, Lorg/osmdroid/SensorEventListenerProxy;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/SensorEventListenerProxy;->mListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/SensorEventListenerProxy;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/SensorEventListenerProxy;->mListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/SensorEventListenerProxy;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v0, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    :cond_0
    return-void
.end method

.method public startListening(Landroid/hardware/SensorEventListener;II)Z
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/SensorEventListenerProxy;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lorg/osmdroid/SensorEventListenerProxy;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lorg/osmdroid/SensorEventListenerProxy;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0, p3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    goto :goto_0
.end method

.method public stopListening()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/SensorEventListenerProxy;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v0, p0, Lorg/osmdroid/SensorEventListenerProxy;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
