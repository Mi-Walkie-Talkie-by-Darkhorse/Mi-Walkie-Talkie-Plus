.class public Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lorg/osmdroid/views/overlay/compass/IOrientationProvider;


# instance fields
.field private mAzimuth:F

.field private mOrientationConsumer:Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->stopOrientationProvider()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mOrientationConsumer:Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method public getLastKnownOrientation()F
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mAzimuth:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aget p1, p1, v0

    iput p1, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mAzimuth:F

    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mOrientationConsumer:Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;->onOrientationChanged(FLorg/osmdroid/views/overlay/compass/IOrientationProvider;)V

    :cond_0
    return-void
.end method

.method public startOrientationProvider(Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;)Z
    .locals 2

    iput-object p1, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mOrientationConsumer:Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;

    iget-object p1, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public stopOrientationProvider()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mOrientationConsumer:Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
