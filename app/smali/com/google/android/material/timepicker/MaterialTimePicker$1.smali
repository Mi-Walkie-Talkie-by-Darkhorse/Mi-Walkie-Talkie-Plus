.class Lcom/google/android/material/timepicker/MaterialTimePicker$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/MaterialTimePicker;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/MaterialTimePicker;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$1;->this$0:Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$1;->this$0:Lcom/google/android/material/timepicker/MaterialTimePicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->access$402(Lcom/google/android/material/timepicker/MaterialTimePicker;I)I

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$1;->this$0:Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-static {v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->access$500(Lcom/google/android/material/timepicker/MaterialTimePicker;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->access$600(Lcom/google/android/material/timepicker/MaterialTimePicker;Lcom/google/android/material/button/MaterialButton;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$1;->this$0:Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-static {v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->access$700(Lcom/google/android/material/timepicker/MaterialTimePicker;)Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->resetChecked()V

    return-void
.end method
