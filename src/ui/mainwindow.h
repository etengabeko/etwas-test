#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QHash>
#include <QMainWindow>

class QMdiArea;
class QMdiSubWindow;
class QString;

class SubWindow;

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    enum class Mode
    {
        Debug,
        Work
    };

public:
    explicit MainWindow(Mode mode = Mode::Work,
                        QWidget* parent = nullptr);
    ~MainWindow();

private slots:
    void slotNewControlPanel();
    void slotNewControlPanelDebug();

    void slotAddSubWindow(SubWindow* subwindow);
    void slotRemoveSubWindow(SubWindow* subwindow);
    void slotCloseSubWindow();

private:
    void initMenu(Mode mode);
    void createNewControlPanel(Mode mode);

private:
    QMdiArea* m_central = nullptr;
    QHash<SubWindow*, QMdiSubWindow*> m_subwindows;

};

#endif // UI_MAINWINDOW_H
