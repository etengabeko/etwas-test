#ifndef UI_DISPLAY_OPTIONS_WIDGET_H
#define UI_DISPLAY_OPTIONS_WIDGET_H

#include <QWidget>

class QString;

namespace Ui
{
class DisplayOptions;
} // Ui

class DisplayOptionsWidget : public QWidget
{
    Q_OBJECT

public:
    explicit DisplayOptionsWidget(QWidget* parent = nullptr);
    ~DisplayOptionsWidget();

    void setFirstImage(const QString& pixmapFileName);
    void setFirstImageEnabled(bool enabled);

    void setSecondImage(const QString& pixmapFileName);
    void setSecondImageEnabled(bool enabled);

    void setBlinkingEnabled(bool enabled);

    void setTimeOn(int msec);
    void setTimeOff(int msec);

    void setBrightLevel(int level);

signals:
    void imageFirstEnabled(bool enabled);
    void imageSecondEnabled(bool enabled);
    void blinkingEnabled(bool enabled);

    void timeOnChanged(int msec);
    void timeOffChanged(int msec);

    void brightChanged(int level);

private slots:
    void slotChangeBrightness(int level);

private:
    Ui::DisplayOptions* m_ui = nullptr;

};

#endif // UI_DISPLAY_OPTIONS_WIDGET_H